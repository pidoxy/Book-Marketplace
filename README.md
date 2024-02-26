# Book-Marketplace

### Setting Up the Flutter App
This guide explains how to clone the Campus Thrift Books repository and run the app on your local machine.

### Prerequisites:

- Flutter SDK: Download and install the Flutter SDK from the official 
- website: https://docs.flutter.dev/get-started/install.
- Git: Install Git from https://git-scm.com/downloads.


### Steps:

1. Clone the Repository:

    - Open your terminal or command prompt.

    - Navigate to the mobile directory where you want to clone the repository.

    - Use the following command [repository_url](https://github.com/pidoxy/Campus-Thrift-Books.git]) - the actual URL of this repository: 
    ```
    git clone <repository_url>
    ```

2. Install Dependencies:

    - Navigate to the cloned directory:
    ```
    cd <repository_name>/mobile
    ```
    - Run the following command to install the project's dependencies:
    ```
    flutter pub get
    ```
3. Run the App:

    - You can now run the app on a connected device or emulator using:
    ```
    flutter run
    ```
    - To choose a specific platform (Android or iOS), use:
    ```
    flutter run --device-type=<platform>
    ```
    Replace <platform> with android or ios.