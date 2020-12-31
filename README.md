# VB-Cable uninstall (macOS)

Uninstall [VB-Cable](https://vb-audio.com/Cable/) on macOS:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/remarkablemark/vb-cable-uninstall-macos/master/uninstall.sh)"
```

Paste the command above in a macOS Terminal.

The VB-Cable uninstall script is inspired by the [forum post](https://forum.vb-audio.com/viewtopic.php?p=3683&sid=f6e0e6f6eec13915a75a230bf92bd451#p3683).

## Script

Delete the `VBCable.Driver` file from the `/Library/Audio/Plugin-Ins/HAL/` directory:

```sh
rm -rf /Library/Audio/Plugin-Ins/HAL/VBCable.Driver
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
rm /Library/Preferences/com.vbaudio.vbcable.plist
```

Delete the `com.vbaudio.vbcableagent.plist` file from the `/Library/LaunchDaemons/` directory:

```sh
rm /Library/LaunchDaemons/com.vbaudio.vbcableagent.plist
```

## License

[MIT](LICENSE)
