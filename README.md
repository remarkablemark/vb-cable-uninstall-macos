# VB-Cable uninstall (macOS)

Uninstall [VB-Cable](https://vb-audio.com/Cable/) on macOS:

```sh
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/remarkablemark/vb-cable-uninstall-macos/master/uninstall.sh)"
```

Paste the command above in a macOS Terminal.

The VB-Cable uninstall script is inspired by the [forum post](https://forum.vb-audio.com/viewtopic.php?p=3683&sid=f6e0e6f6eec13915a75a230bf92bd451#p3683). Read my [blog post](https://remarkablemark.org/blog/2020/12/31/uninstall-vb-cable-mac/).

## Script

Delete the `VBCable.driver` directory from the `/Library/Audio/Plug-Ins/HAL/` directory:

```sh
sudo rm -rf /Library/Audio/Plug-Ins/HAL/VBCable.driver/
```

Delete the `VB-CABLE Control Panel.app` file from the `/Applications/VB-Audio/` directory:

```sh
rm '/Applications/VB-Audio/VB-CABLE Control Panel.app'
```

> Since you're removing VB-Cable entirely, you can delete the whole `/Applications/VB-Audio/` directory:
>
> ```sh
> rm -rf /Applications/VB-Audio/
> ```

Delete the `com.vbaudio.vbcable.plist` file from the `/Library/Preferences/` directory:

```sh
sudo rm -rf /Library/Preferences/com.vbaudio.vbcable.plist
```

Delete the `com.vbaudio.vbcableagent.plist` file from the `/Library/LaunchDaemons/` directory:

```sh
sudo rm -rf /Library/LaunchDaemons/com.vbaudio.vbcableagent.plist
```

## License

[MIT](LICENSE)
