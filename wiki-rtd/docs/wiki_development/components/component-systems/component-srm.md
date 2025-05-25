# Component: Steam Rom Manager 

## Steam Rom Manager

**Type:** pure flatpak module (bound to be changed)

This is a flatpak module so it will just be compiled at each build (boud to be outsourced before 0.9.0b).
Follow the link in the module comments and you will reach the original flathub repo of the project.
Their manifest is in json so you can convert it by using for example with https://jsonformatter.org/json-to-yaml.
The we can use a tool like `Meld` to compare the original incoming manifest with RetroDECK's one.

Check if the header is similar to ours and take note of the differences, if something is added we might have to add it as well. After just delete it. [image1]
What usually change is the sha and the url of the module, but sometimes the module instructions itselves may change like in this case [image2].
So let's update our module and here's the results [image3]: in this case I removed the `>-` that is just garbage introduced by the converter. I replaced `/app` with `${FLATPAK_DEST}` but this is not actually needed, just more in line with the flatpak manifest standards, and got rid of all the `metainfo.xml` and `.desktop` files as they are needed for the original manifest and cannot be included into ours (in any case the flatpak builder will discard them as they are not called net.retrodeck.retrodeck).

In this case the original manifest header got an env variable `IN_FLATPAK: 1` but to not make it interfere with the rest of the RetroDECK modules we moved it in the Steam Rom Manager module itself.
Here is the comparsion results after the edits [image4].
Do the same for the component's libraries, and be aware that if a library is shared with other modules will be in the common region (up).
Paste the new edited manifest over ours, check the changes and commit it like `SRM: module updated`.

**NOTE:** it's a good practice to commit every single module update and not in bulk as if something is wrong is easier to just revert the single commit.
