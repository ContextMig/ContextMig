.class public Lcom/fsck/k9/preferences/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;,
        Lcom/fsck/k9/preferences/Settings$WebFontSizeSetting;,
        Lcom/fsck/k9/preferences/Settings$FontSizeSetting;,
        Lcom/fsck/k9/preferences/Settings$PseudoEnumSetting;,
        Lcom/fsck/k9/preferences/Settings$EnumSetting;,
        Lcom/fsck/k9/preferences/Settings$ColorSetting;,
        Lcom/fsck/k9/preferences/Settings$BooleanSetting;,
        Lcom/fsck/k9/preferences/Settings$StringSetting;,
        Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;,
        Lcom/fsck/k9/preferences/Settings$V;,
        Lcom/fsck/k9/preferences/Settings$SettingsDescription;,
        Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "settingDescriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v2, "serializedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 200
    .local v3, "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 201
    .local v5, "settingName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "internalValue":Ljava/lang/Object;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/TreeMap;

    .line 204
    .local v7, "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    invoke-virtual {v7}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    .local v0, "highestVersion":Ljava/lang/Integer;
    invoke-virtual {v7, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 207
    .local v4, "settingDesc":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v4, v1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "stringValue":Ljava/lang/String;
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    .end local v6    # "stringValue":Ljava/lang/String;
    :cond_0
    const-string v9, "Settings.convert() called with a setting that should have been removed: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    .end local v0    # "highestVersion":Ljava/lang/Integer;
    .end local v1    # "internalValue":Ljava/lang/Object;
    .end local v3    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "settingDesc":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v5    # "settingName":Ljava/lang/String;
    .end local v7    # "versionedSetting":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    :cond_1
    return-object v2
.end method

.method public static upgrade(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .param p0, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription;",
            ">;>;",
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
    .line 118
    .local p1, "customUpgraders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;>;"
    .local p2, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    .local p3, "validatedSettingsMutable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 120
    .local v0, "deletedSettings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v1, p0, 0x1

    .local v1, "toVersion":I
    :goto_0
    const/16 v3, 0x30

    if-gt v1, v3, :cond_1

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;

    .line 123
    .local v2, "upgrader":Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;
    invoke-interface {v2, p3}, Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;->upgrade(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 126
    .end local v2    # "upgrader":Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;
    :cond_0
    invoke-static {p2, p3, v0, v1}, Lcom/fsck/k9/preferences/Settings;->upgradeSettingsGeneric(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    return-object v0
.end method

.method private static upgradeSettingInsertDefault(Ljava/util/Map;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V
    .locals 5
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "validatedSettingsMutable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;, "Lcom/fsck/k9/preferences/Settings$SettingsDescription<TT;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p2, v0}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "prettyValue":Ljava/lang/String;
    const-string v2, "Added new setting \"%s\" with default value \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .end local v1    # "prettyValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static upgradeSettingRemove(Ljava/util/Map;Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .param p2, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "validatedSettingsMutable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "deletedSettingsMutable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v0, "Removed setting \"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method private static upgradeSettingsGeneric(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;I)Ljava/util/Set;
    .locals 12
    .param p3, "toVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    .local p1, "validatedSettingsMutable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "deletedSettingsMutable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 134
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 135
    .local v6, "versions":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    .local v4, "settingName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeMap;

    .line 138
    .local v5, "versionedSettings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    invoke-virtual {v5}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p3, :cond_1

    move v1, v9

    .line 139
    .local v1, "isNewlyAddedSetting":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 140
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 141
    .local v7, "wasHandledByCustomUpgrader":Z
    if-nez v7, :cond_0

    .line 145
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 146
    .local v3, "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    if-nez v3, :cond_2

    .line 147
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "First version of a setting must be non-null!"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .end local v1    # "isNewlyAddedSetting":Z
    .end local v3    # "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v7    # "wasHandledByCustomUpgrader":Z
    :cond_1
    move v1, v10

    .line 138
    goto :goto_1

    .line 149
    .restart local v1    # "isNewlyAddedSetting":Z
    .restart local v3    # "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .restart local v7    # "wasHandledByCustomUpgrader":Z
    :cond_2
    invoke-static {p1, v4, v3}, Lcom/fsck/k9/preferences/Settings;->upgradeSettingInsertDefault(Ljava/util/Map;Ljava/lang/String;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    .line 152
    .end local v3    # "setting":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v7    # "wasHandledByCustomUpgrader":Z
    :cond_3
    invoke-virtual {v5}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 153
    .local v0, "highestVersion":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p3, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    move v2, v9

    .line 154
    .local v2, "isRemovedSetting":Z
    :goto_2
    if-eqz v2, :cond_0

    .line 155
    if-nez p2, :cond_4

    .line 156
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "deletedSettingsMutable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 158
    .restart local p2    # "deletedSettingsMutable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-static {p1, p2, v4}, Lcom/fsck/k9/preferences/Settings;->upgradeSettingRemove(Ljava/util/Map;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isRemovedSetting":Z
    :cond_5
    move v2, v10

    .line 153
    goto :goto_2

    .line 161
    .end local v0    # "highestVersion":Ljava/lang/Integer;
    .end local v1    # "isNewlyAddedSetting":Z
    .end local v4    # "settingName":Ljava/lang/String;
    .end local v5    # "versionedSettings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    .end local v6    # "versions":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    :cond_6
    return-object p2
.end method

.method static validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 18
    .param p0, "version"    # I
    .param p3, "useDefaultValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription;",
            ">;>;",
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
    .line 44
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    .local p2, "importedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v10, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 49
    .local v11, "versionedSetting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/TreeMap;

    .line 50
    .local v12, "versions":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    add-int/lit8 v13, p0, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    .line 53
    .local v4, "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 57
    invoke-interface {v4}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 58
    .local v8, "settingVersion":Ljava/lang/Integer;
    invoke-virtual {v12, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    .line 61
    .local v2, "desc":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 68
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 69
    const-string v15, "Key \"%s\" wasn\'t found in the imported file.%s"

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    aput-object v6, v16, v13

    const/16 v17, 0x1

    if-eqz p3, :cond_1

    const-string v13, " Using default value."

    :goto_1
    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    move/from16 v9, p3

    .line 90
    .local v9, "useDefaultValue":Z
    :goto_2
    if-eqz v9, :cond_0

    .line 91
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "defaultValue":Ljava/lang/Object;
    invoke-interface {v10, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    .end local v1    # "defaultValue":Ljava/lang/Object;
    .end local v9    # "useDefaultValue":Z
    :cond_1
    const-string v13, ""

    goto :goto_1

    .line 75
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 77
    .local v7, "prettyValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v7}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;->fromPrettyString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 78
    .local v5, "internalValue":Ljava/lang/Object;
    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v9, 0x0

    .restart local v9    # "useDefaultValue":Z
    goto :goto_2

    .line 80
    .end local v5    # "internalValue":Ljava/lang/Object;
    .end local v9    # "useDefaultValue":Z
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    const-string v15, "Key \"%s\" has invalid value \"%s\" in imported file. %s"

    const/4 v13, 0x3

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    aput-object v6, v16, v13

    const/4 v13, 0x1

    aput-object v7, v16, v13

    const/16 v17, 0x2

    if-eqz p3, :cond_3

    const-string v13, "Using default value."

    :goto_3
    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    move/from16 v9, p3

    .restart local v9    # "useDefaultValue":Z
    goto :goto_2

    .line 81
    .end local v9    # "useDefaultValue":Z
    :cond_3
    const-string v13, "Skipping."

    goto :goto_3

    .line 96
    .end local v2    # "desc":Lcom/fsck/k9/preferences/Settings$SettingsDescription;
    .end local v3    # "e":Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
    .end local v4    # "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "prettyValue":Ljava/lang/String;
    .end local v8    # "settingVersion":Ljava/lang/Integer;
    .end local v11    # "versionedSetting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    .end local v12    # "versions":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    :cond_4
    return-object v10
.end method

.method static varargs versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;
    .locals 6
    .param p0, "versionDescriptions"    # [Lcom/fsck/k9/preferences/Settings$V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fsck/k9/preferences/Settings$V;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/preferences/Settings$SettingsDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 237
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 238
    .local v1, "v":Lcom/fsck/k9/preferences/Settings$V;
    iget-object v4, v1, Lcom/fsck/k9/preferences/Settings$V;->version:Ljava/lang/Integer;

    iget-object v5, v1, Lcom/fsck/k9/preferences/Settings$V;->description:Lcom/fsck/k9/preferences/Settings$SettingsDescription;

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "v":Lcom/fsck/k9/preferences/Settings$V;
    :cond_0
    return-object v0
.end method
