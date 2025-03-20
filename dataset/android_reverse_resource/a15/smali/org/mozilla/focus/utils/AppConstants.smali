.class public final Lorg/mozilla/focus/utils/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# direct methods
.method public static isDevBuild()Z
    .locals 2

    .prologue
    .line 20
    const-string v0, "debug"

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGeckoBuild()Z
    .locals 2

    .prologue
    .line 32
    const-string v0, "webview"

    const-string v1, "gecko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKlarBuild()Z
    .locals 2

    .prologue
    .line 24
    const-string v0, "klar"

    const-string v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isReleaseBuild()Z
    .locals 2

    .prologue
    .line 28
    const-string v0, "release"

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static supportsDownloadingFiles()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
