#pragma once

#include "constants.hpp"
#include <array>
#include <glm/fwd.hpp>
#include <glm/glm.hpp>
#include <vulkan/vulkan.h>

namespace sph_program {
struct Particle {
  glm::vec2 position;
  glm::vec2 velocity;
  glm::highp_vec4 color; // Should be generated based on particle properties
  real_t mass;           // m = mass of particle
  real_t density;        // rho = density of particle
  real_t pressure;       // p = pressure of particle
  real_t type;           // type of particle
  real_t hsml;           // smoothing length, not fully understood ATM

  int_t interactions;

  // Differentials
  glm::vec2 in_d_vx_d_t; // in_d_vx_d_t = change in velocity of particle
  glm::vec2 ex_d_vx_d_t; // ex_d_vx_d_t = change in velocity of particle
  glm::vec2 d_vx;        // d_vx = change in velocity of particle
  real_t d_rho_d_t;            // d_rho_d_t = change in density of particle

  // Density correction
  real_t av_rho; // av_rho = average density of particle
  real_t w_sum;  // w_sum = sum of weights of particle

  static VkVertexInputBindingDescription getBindingDescription() {
    VkVertexInputBindingDescription bindingDescription{};
    bindingDescription.binding = 0;
    bindingDescription.stride = sizeof(Particle);
    bindingDescription.inputRate = VK_VERTEX_INPUT_RATE_VERTEX;

    return bindingDescription;
  }

  /** @brief Get the attribute descriptions for the vertex
   *  @return The attribute descriptions
   *  TODO: Add more attributes, and separate into compute and graphics
   */
  static std::array<VkVertexInputAttributeDescription, 2>
  getAttributeDescriptions() {
    std::array<VkVertexInputAttributeDescription, 2> attributeDescriptions{};

    attributeDescriptions[0].binding = 0;
    attributeDescriptions[0].location = 0;
    attributeDescriptions[0].format = VK_FORMAT_R32G32_SFLOAT;
    attributeDescriptions[0].offset = offsetof(Particle, position);

    attributeDescriptions[1].binding = 0;
    attributeDescriptions[1].location = 1;
    attributeDescriptions[1].format = VK_FORMAT_R32G32B32A32_SFLOAT;
    attributeDescriptions[1].offset = offsetof(Particle, color);

    return attributeDescriptions;
  }
};
} // namespace sph_program