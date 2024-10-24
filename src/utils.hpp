#pragma once

#include <fstream>
#include <stdexcept>
#include <vector>

namespace sph_program {

/**
 * @brief Read a file and return its content as a vector of characters
 * @param filename The name of the file to read
 * @return The content of the file as a vector of characters
 */
static std::vector<char> readFile(const std::string &filename) {
  std::ifstream file(filename, std::ios::ate | std::ios::binary);

  if (!file.is_open()) {
    throw std::runtime_error("failed to open file!");
  }

  size_t fileSize = (size_t)file.tellg();
  std::vector<char> buffer(fileSize);

  file.seekg(0);
  file.read(buffer.data(), fileSize);

  file.close();

  return buffer;
}

} // namespace sph_program
