.class public Lcom/fsck/k9/preferences/GlobalSettings;
.super Ljava/lang/Object;
.source "GlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/preferences/GlobalSettings$DirectorySetting;,
        Lcom/fsck/k9/preferences/GlobalSettings$TimeSetting;,
        Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;,
        Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;,
        Lcom/fsck/k9/preferences/GlobalSettings$LanguageSetting;,
        Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV31;,
        Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV24;,
        Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV12;
    }
.end annotation


# static fields
.field static final SETTINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final UPGRADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x1e

    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    .local v0, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    const-string v2, "animations"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 53
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 52
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v2, "attachmentdefaultpath"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$DirectorySetting;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$DirectorySetting;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x29

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$DirectorySetting;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$DirectorySetting;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 55
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "backgroundOperations"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 61
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/K9$BACKGROUND_OPS;

    sget-object v8, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 60
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "changeRegisteredNameColor"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 64
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 63
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "confirmDelete"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 67
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 66
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "confirmDeleteStarred"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 70
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 69
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "confirmSpam"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 73
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 72
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "confirmMarkAllRead"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x2c

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 75
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "countSearchMessages"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 79
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 78
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "enableDebugLogging"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 82
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 81
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "enableSensitiveLogging"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 85
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 84
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "fontSizeAccountDescription"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 88
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 87
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "fontSizeAccountName"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 91
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 90
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v2, "fontSizeFolderName"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 94
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 93
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "fontSizeFolderStatus"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 96
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "fontSizeMessageComposeInput"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/4 v5, 0x5

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 99
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "fontSizeMessageListDate"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 103
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 102
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, "fontSizeMessageListPreview"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 105
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "fontSizeMessageListSender"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 109
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 108
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "fontSizeMessageListSubject"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 112
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 111
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "fontSizeMessageViewAdditionalHeaders"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 114
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "fontSizeMessageViewCC"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 118
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 117
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "fontSizeMessageViewContent"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 121
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$WebFontSizeSetting;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$WebFontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x1f

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 120
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "fontSizeMessageViewDate"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 125
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 124
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "fontSizeMessageViewSender"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 128
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 127
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "fontSizeMessageViewSubject"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 131
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 130
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "fontSizeMessageViewTime"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 134
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 133
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "fontSizeMessageViewTo"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 136
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "gesturesEnabled"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/4 v5, 0x4

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 139
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "hideSpecialAccounts"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 144
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 143
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "keyguardPrivacy"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 147
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0xc

    .line 148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 146
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "language"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 151
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$LanguageSetting;

    invoke-direct {v6}, Lcom/fsck/k9/preferences/GlobalSettings$LanguageSetting;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 150
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "measureAccounts"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 154
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 153
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "messageListCheckboxes"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 157
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 156
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v2, "messageListPreviewLines"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 160
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    const/16 v7, 0x64

    invoke-direct {v6, v10, v7, v9}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 159
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "messageListStars"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 163
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 162
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "messageViewFixedWidthFont"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 166
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 165
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "messageViewReturnToList"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 169
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 168
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v2, "messageViewShowNext"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 172
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 171
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "quietTimeEnabled"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 175
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 174
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v2, "quietTimeEnds"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 178
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$TimeSetting;

    const-string v7, "7:00"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$TimeSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 177
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v2, "quietTimeStarts"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 181
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$TimeSetting;

    const-string v7, "21:00"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$TimeSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 180
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v2, "registeredNameColor"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 184
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    const v7, -0xffff71

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 183
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v2, "showContactName"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 187
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 186
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v2, "showCorrespondentNames"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 190
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 189
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v2, "sortTypeEnum"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0xa

    .line 193
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$SortType;

    sget-object v8, Lcom/fsck/k9/Account;->DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 192
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v2, "sortAscending"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0xa

    .line 196
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 195
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v2, "startIntegratedInbox"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 199
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 198
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "theme"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 202
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;

    sget-object v7, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;-><init>(Lcom/fsck/k9/K9$Theme;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 201
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v2, "messageViewTheme"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x10

    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;

    sget-object v7, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;-><init>(Lcom/fsck/k9/K9$Theme;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x18

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;

    sget-object v7, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;-><init>(Lcom/fsck/k9/K9$Theme;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 204
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "useVolumeKeysForListNavigation"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 209
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 208
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v2, "useVolumeKeysForNavigation"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 212
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 211
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "wrapFolderNames"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x16

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 214
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v2, "notificationHideSubject"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0xc

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/K9$NotificationHideSubject;

    sget-object v8, Lcom/fsck/k9/K9$NotificationHideSubject;->NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 217
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "useBackgroundAsUnreadIndicator"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x13

    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 220
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v2, "threadedView"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x14

    .line 224
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 223
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v2, "splitViewMode"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x17

    .line 227
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/K9$SplitViewMode;

    sget-object v8, Lcom/fsck/k9/K9$SplitViewMode;->NEVER:Lcom/fsck/k9/K9$SplitViewMode;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 226
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "messageComposeTheme"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x18

    .line 230
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;

    sget-object v7, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;-><init>(Lcom/fsck/k9/K9$Theme;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 229
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v2, "fixedMessageViewTheme"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x18

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 232
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v2, "showContactPicture"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x19

    .line 236
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 235
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "autofitWidth"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x1c

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 238
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v2, "colorizeMissingContactPictures"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x1d

    .line 242
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 241
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "messageViewDeleteActionVisible"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 245
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 244
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v2, "messageViewArchiveActionVisible"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 248
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 247
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "messageViewMoveActionVisible"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 251
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 250
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "messageViewCopyActionVisible"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 254
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 253
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "messageViewSpamActionVisible"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 257
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 256
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v2, "fontSizeMessageViewContentPercent"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x1f

    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    const/16 v7, 0x28

    const/16 v8, 0xfa

    const/16 v9, 0x64

    invoke-direct {v6, v7, v8, v9}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 259
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v2, "hideUserAgent"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x20

    .line 263
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 262
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v2, "hideTimeZone"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x20

    .line 266
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 265
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v2, "lockScreenNotificationVisibility"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x25

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    sget-object v8, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->MESSAGE_COUNT:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 268
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v2, "confirmDeleteFromNotification"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x26

    .line 273
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 272
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v2, "messageListSenderAboveSubject"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x26

    .line 276
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 275
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "notificationQuickDelete"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x26

    .line 279
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/K9$NotificationQuickDelete;

    sget-object v8, Lcom/fsck/k9/K9$NotificationQuickDelete;->NEVER:Lcom/fsck/k9/K9$NotificationQuickDelete;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 278
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v2, "notificationDuringQuietTimeEnabled"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x27

    .line 282
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 281
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "confirmDiscardMessage"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x28

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 284
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v2, "pgpInlineDialogCounter"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x2b

    .line 288
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    const v7, 0x7fffffff

    invoke-direct {v6, v11, v7, v11}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 287
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v2, "pgpSignOnlyDialogCounter"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x2d

    .line 291
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    const v7, 0x7fffffff

    invoke-direct {v6, v11, v7, v11}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 290
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v2, "openPgpProvider"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x2e

    .line 294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, ""

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 293
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v2, "openPgpSupportSignOnly"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x2f

    .line 297
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 296
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v2, "fontSizeMessageViewBCC"

    new-array v3, v10, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x30

    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v11

    .line 299
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/GlobalSettings;->SETTINGS:Ljava/util/Map;

    .line 305
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v1, "u":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;>;"
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV12;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV12;-><init>(Lcom/fsck/k9/preferences/GlobalSettings$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV24;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV24;-><init>(Lcom/fsck/k9/preferences/GlobalSettings$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV31;

    invoke-direct {v3}, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV31;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/GlobalSettings;->UPGRADERS:Ljava/util/Map;

    .line 311
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/GlobalSettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/fsck/k9/preferences/Settings;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getGlobalSettings(Lcom/fsck/k9/preferences/Storage;)Ljava/util/Map;
    .locals 5
    .param p0, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/preferences/Storage;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/fsck/k9/preferences/GlobalSettings;->SETTINGS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "key":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 330
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static upgrade(ILjava/util/Map;)Ljava/util/Set;
    .locals 2
    .param p0, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/GlobalSettings;->UPGRADERS:Ljava/util/Map;

    sget-object v1, Lcom/fsck/k9/preferences/GlobalSettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0, v1, p1}, Lcom/fsck/k9/preferences/Settings;->upgrade(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static validate(ILjava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "importedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fsck/k9/preferences/GlobalSettings;->SETTINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/fsck/k9/preferences/Settings;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
