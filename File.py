import os

# Define the directory and file paths to create based on the screenshot.
# The script assumes it is being run from the desired root folder.
file_structure = {
    'db': [
        'online_bus (1).sql'
    ],
    'root_files': [
        'home page.css',
        'index.html',
        'landing page.css',
        'landing_page.php',
        'login_page.css',
        'login_page.html',
        'login_page.php',
        'passenger info.php',
        'payment page.php',
        'README.md',
        'sign-up.css',
        'sign-up.html',
        'sign-up.php',
        'ticket page.css',
        'ticket page.php'
    ]
}

def create_file_structure(structure, base_path='.'):
    """
    Creates a directory and file structure based on a dictionary.

    Args:
        structure (dict): A dictionary where keys are directory names and
                          values are lists of files to create within them.
                          'root_files' key is used for files in the base_path.
        base_path (str): The starting directory to create the structure in.
    """
    print(f"Starting to create file structure in '{os.path.abspath(base_path)}'...")

    # Create directories first
    for dir_name, files in structure.items():
        if dir_name != 'root_files':
            dir_path = os.path.join(base_path, dir_name)
            if not os.path.exists(dir_path):
                os.makedirs(dir_path)
                print(f"Created directory: {dir_path}")
            else:
                print(f"Directory already exists: {dir_path}")

            # Create files within the directories
            for file_name in files:
                file_path = os.path.join(dir_path, file_name)
                with open(file_path, 'w') as f:
                    f.write(f'# Placeholder content for {file_name}\n')
                print(f"Created file: {file_path}")
    
    # Create files in the root directory
    if 'root_files' in structure:
        for file_name in structure['root_files']:
            file_path = os.path.join(base_path, file_name)
            with open(file_path, 'w') as f:
                f.write(f'# Placeholder content for {file_name}\n')
            print(f"Created file: {file_path}")

    print("\nFile structure creation complete!")

if __name__ == "__main__":
    create_file_structure(file_structure)
