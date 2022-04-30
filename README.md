This script has been tested on Unity 2019.4.30f1 or later (Probably works on older versions too)
# How to use
- Create windows shortcut of [UpdateUnityDefaultScript.bat](/Scripts/UpdateUnityDefaultScripts.bat) and change it's properties to open with admin rights
- Or directly open [UpdateUnityDefaultScript.bat](/Scripts/UpdateUnityDefaultScripts.bat) with admin rights

# How to customize scripts
1. Go to C:\Program Files\Unity\Editor\[Version]\Editor\Data\Resources\ScriptTemplates (This is a Unity default path) and copy the script you want to modify
2. Go to [.Scripts/ModifiedScripts/](/Scripts/ModifiedScripts/) and paste the script
3. Open the file and modify it

## Example
[81-C# Script-NewBehaviourScript.cs.txt](/Scripts/ModifiedScripts/81-C%23%20Script-NewBehaviourScript.cs.txt/)
- Default:
```cs
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

    #ROOTNAMESPACEBEGIN#
public class #SCRIPTNAME# : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        #NOTRIM#
    }

    // Update is called once per frame
    void Update()
    {
        #NOTRIM#
    }
}
#ROOTNAMESPACEEND#
```
- Custom:
```cs
using UnityEngine;

public class #SCRIPTNAME# : MonoBehaviour {
    private void Start() {}

    private void Update() {}
}
```

# How does it work
The script check the registers to find unity location and copy paste the modified script to that location
