1. Create virtual environment.

```python3 -m venv .env ```

2. Press Ctrl+shift+P in visual studio code.

3. Select Python interpretor and the virtual environment .env created above.

4. Open a new terminal for virtual environment to be activated.

5. Install python packages

    ```python -m pip install flask_restful faker```

6. Create a .gitignore file and add following to avoid checking in the virtual environment file.

```.env/```