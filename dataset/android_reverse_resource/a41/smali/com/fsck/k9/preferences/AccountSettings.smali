.class public Lcom/fsck/k9/preferences/AccountSettings;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;,
        Lcom/fsck/k9/preferences/AccountSettings$StorageProviderSetting;,
        Lcom/fsck/k9/preferences/AccountSettings$RingtoneSetting;,
        Lcom/fsck/k9/preferences/AccountSettings$StringResourceSetting;,
        Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;
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
    const/4 v13, -0x1

    const v12, -0xffff01

    const/16 v11, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    .local v0, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    const-string v2, "alwaysBcc"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0xb

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, ""

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 47
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v2, "alwaysShowCcBcc"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0xd

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 50
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "archiveFolderName"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 54
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, "Archive"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 53
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v2, "autoExpandFolderName"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 57
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, "INBOX"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 56
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v2, "automaticCheckIntervalMinutes"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const v7, 0x7f090003

    invoke-direct {v6, v13, v7}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 59
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "chipColor"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 63
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 62
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v2, "defaultQuotedTextShown"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 66
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 65
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "deletePolicy"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;

    sget-object v7, Lcom/fsck/k9/Account$DeletePolicy;->NEVER:Lcom/fsck/k9/Account$DeletePolicy;

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;-><init>(Lcom/fsck/k9/Account$DeletePolicy;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 68
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "displayCount"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const/16 v7, 0x19

    const v8, 0x7f090005

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 71
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "draftsFolderName"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, "Drafts"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 75
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "expungePolicy"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 79
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$StringResourceSetting;

    sget-object v7, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    invoke-virtual {v7}, Lcom/fsck/k9/Account$Expunge;->name()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f090024

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/AccountSettings$StringResourceSetting;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 78
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "folderDisplayMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 83
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$FolderMode;

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 82
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "folderPushMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$FolderMode;

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 85
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "folderSyncMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 89
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$FolderMode;

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 88
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "folderTargetMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 92
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$FolderMode;

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 91
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "goToUnreadMessageSearch"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 95
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 94
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "idleRefreshMinutes"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 98
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const/16 v7, 0x18

    const v8, 0x7f09003a

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 97
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, "inboxFolderName"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 101
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, "INBOX"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 100
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "led"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 104
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 103
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "ledColor"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    invoke-direct {v6, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 106
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "localStorageProvider"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 110
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$StorageProviderSetting;

    invoke-direct {v6}, Lcom/fsck/k9/preferences/AccountSettings$StorageProviderSetting;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 109
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "markMessageAsReadOnView"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/4 v5, 0x7

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 112
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "maxPushFolders"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    const/16 v7, 0x64

    const/16 v8, 0xa

    invoke-direct {v6, v10, v7, v8}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 115
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "maximumAutoDownloadMessageSize"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 119
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const v7, 0x8000

    const v8, 0x7f090001

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 118
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "maximumPolledMessageAge"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 122
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const v7, 0x7f090011

    invoke-direct {v6, v13, v7}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 121
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "messageFormat"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 125
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$MessageFormat;

    sget-object v8, Lcom/fsck/k9/Account;->DEFAULT_MESSAGE_FORMAT:Lcom/fsck/k9/Account$MessageFormat;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 124
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "messageFormatAuto"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/4 v5, 0x2

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 127
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "messageReadReceipt"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 131
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 130
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "notifyMailCheck"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 134
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 133
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "notifyNewMail"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 137
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 136
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "folderNotifyNewMailMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x22

    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$FolderMode;

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 139
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "notifySelfNewMail"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 143
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 142
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "pushPollOnConnect"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 146
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 145
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "quotePrefix"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 149
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, ">"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 148
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "quoteStyle"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 152
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$QuoteStyle;

    sget-object v8, Lcom/fsck/k9/Account;->DEFAULT_QUOTE_STYLE:Lcom/fsck/k9/Account$QuoteStyle;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 151
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "replyAfterQuote"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 155
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 154
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "ring"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 158
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 157
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v2, "ringtone"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$RingtoneSetting;

    const-string v7, "content://settings/system/notification_sound"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/AccountSettings$RingtoneSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 160
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "searchableFolders"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 164
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$Searchable;

    sget-object v8, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 163
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v2, "sentFolderName"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 167
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, "Sent"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 166
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v2, "sortTypeEnum"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x9

    .line 170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$SortType;

    sget-object v8, Lcom/fsck/k9/Account;->DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 169
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v2, "sortAscending"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x9

    .line 173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 172
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v2, "showPicturesEnum"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 176
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/Account$ShowPictures;

    sget-object v8, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 175
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "signatureBeforeQuotedText"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 179
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 178
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v2, "spamFolderName"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, "Spam"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 181
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v2, "stripSignature"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/4 v5, 0x2

    .line 185
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 184
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v2, "subscribedFoldersOnly"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 188
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 187
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v2, "syncRemoteDeletions"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 191
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 190
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v2, "trashFolderName"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 194
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$StringSetting;

    const-string v7, "Trash"

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$StringSetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 193
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "useCompression.MOBILE"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 196
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "useCompression.OTHER"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 200
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 199
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v2, "useCompression.WIFI"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 203
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 202
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "vibrate"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 206
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 205
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "vibratePattern"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 209
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const v7, 0x7f09001f

    invoke-direct {v6, v10, v7}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 208
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v2, "vibrateTimes"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 212
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const/4 v7, 0x5

    const v8, 0x7f090020

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 211
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "allowRemoteSearch"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 215
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v9}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 214
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v2, "remoteSearchNumResults"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 218
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;

    const/16 v7, 0x19

    const v8, 0x7f090019

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/AccountSettings$IntegerResourceSetting;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 217
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v2, "remoteSearchFullText"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 222
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 221
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "notifyContactsMailOnly"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x2a

    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 224
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/AccountSettings;->SETTINGS:Ljava/util/Map;

    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v1, "u":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/AccountSettings;->UPGRADERS:Ljava/util/Map;

    .line 233
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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
    .line 244
    .local p0, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/AccountSettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/fsck/k9/preferences/Settings;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getAccountSettings(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/preferences/Storage;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "prefix":Ljava/lang/String;
    sget-object v4, Lcom/fsck/k9/preferences/AccountSettings;->SETTINGS:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 253
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
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
    .line 240
    .local p1, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/AccountSettings;->UPGRADERS:Ljava/util/Map;

    sget-object v1, Lcom/fsck/k9/preferences/AccountSettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0, v1, p1}, Lcom/fsck/k9/preferences/Settings;->upgrade(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static validate(ILjava/util/Map;Z)Ljava/util/Map;
    .locals 1
    .param p0, "version"    # I
    .param p2, "useDefaultValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "importedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fsck/k9/preferences/AccountSettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0, p1, p2}, Lcom/fsck/k9/preferences/Settings;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
