# Test Environment Repository

This repository is designed to serve as a testing ground for development environment configurations. It provides a flexible setup to experiment with various tools and settings.

## Files in this Repository

- **Dockerfile**: A Dockerfile to create a containerized environment for testing.
- **starship.toml**: A configuration file for testing prompt settings.

## Purpose

The purpose of this repository is to:

1. Provide a sandbox for testing development environment configurations.
2. Allow experimentation with different tools and plugins.
3. Validate compatibility and functionality in a controlled environment.

## Usage

1. Clone this repository:

   ```zsh
   git clone <repository-url>
   cd test_for_starship_and_antidote
   ```

2. Build the Docker container (if applicable):

   ```zsh
   docker build -t test-env .
   ```

3. Run the Docker container (if applicable):

   ```zsh
   docker run -it test-env
   ```

## Notes

- This repository is intended for testing purposes only and may evolve over time.
- Refer to the documentation of the tools you are testing for detailed configuration options.

## Contributing

Feel free to fork this repository and adapt it to your needs. Contributions are welcome!

## License

This project is licensed under the MIT License.
