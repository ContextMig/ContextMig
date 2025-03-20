.class Lcom/fsck/k9/preferences/FolderSettings;
.super Ljava/lang/Object;
.source "FolderSettings.java"


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
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    .local v0, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    const-string v2, "displayMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 32
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 31
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v2, "notifyMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    const/16 v5, 0x22

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 34
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "syncMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 37
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "pushMode"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    const-class v7, Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 40
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "inTopGroup"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 44
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 43
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v2, "integrate"

    new-array v3, v9, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 47
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v10}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v10

    .line 46
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/FolderSettings;->SETTINGS:Ljava/util/Map;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v1, "u":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/FolderSettings;->UPGRADERS:Ljava/util/Map;

    .line 55
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    .line 66
    .local p0, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/FolderSettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/fsck/k9/preferences/Settings;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getFolderSettings(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/preferences/Storage;",
            "Ljava/lang/String;",
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
    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "prefix":Ljava/lang/String;
    sget-object v4, Lcom/fsck/k9/preferences/FolderSettings;->SETTINGS:Ljava/util/Map;

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

    .line 73
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

    .line 74
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 75
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
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
    .line 62
    .local p1, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/FolderSettings;->UPGRADERS:Ljava/util/Map;

    sget-object v1, Lcom/fsck/k9/preferences/FolderSettings;->SETTINGS:Ljava/util/Map;

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
    .line 58
    .local p1, "importedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fsck/k9/preferences/FolderSettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0, p1, p2}, Lcom/fsck/k9/preferences/Settings;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
