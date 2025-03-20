.class Lcom/fsck/k9/preferences/IdentitySettings;
.super Ljava/lang/Object;
.source "IdentitySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/preferences/IdentitySettings$OptionalEmailAddressSetting;,
        Lcom/fsck/k9/preferences/IdentitySettings$SignatureSetting;
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
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .local v0, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;>;>;"
    const-string v2, "signature"

    new-array v3, v7, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/IdentitySettings$SignatureSetting;

    invoke-direct {v6}, Lcom/fsck/k9/preferences/IdentitySettings$SignatureSetting;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v8

    .line 33
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v2, "signatureUse"

    new-array v3, v7, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/Settings$BooleanSetting;

    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$BooleanSetting;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v8

    .line 36
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "replyTo"

    new-array v3, v7, [Lcom/fsck/k9/preferences/Settings$V;

    new-instance v4, Lcom/fsck/k9/preferences/Settings$V;

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/preferences/IdentitySettings$OptionalEmailAddressSetting;

    invoke-direct {v6}, Lcom/fsck/k9/preferences/IdentitySettings$OptionalEmailAddressSetting;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/preferences/Settings$V;-><init>(Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsDescription;)V

    aput-object v4, v3, v8

    .line 39
    invoke-static {v3}, Lcom/fsck/k9/preferences/Settings;->versions([Lcom/fsck/k9/preferences/Settings$V;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/IdentitySettings;->SETTINGS:Ljava/util/Map;

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v1, "u":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/fsck/k9/preferences/Settings$SettingsUpgrader;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/preferences/IdentitySettings;->UPGRADERS:Ljava/util/Map;

    .line 48
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
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
    .line 59
    .local p0, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/IdentitySettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/fsck/k9/preferences/Settings;->convert(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getIdentitySettings(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .param p0, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "identityIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/preferences/Storage;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "suffix":Ljava/lang/String;
    sget-object v5, Lcom/fsck/k9/preferences/IdentitySettings;->SETTINGS:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 69
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method static isEmailAddressValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/fsck/k9/EmailAddressValidator;

    invoke-direct {v0}, Lcom/fsck/k9/EmailAddressValidator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
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
    .line 55
    .local p1, "validatedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/fsck/k9/preferences/IdentitySettings;->UPGRADERS:Ljava/util/Map;

    sget-object v1, Lcom/fsck/k9/preferences/IdentitySettings;->SETTINGS:Ljava/util/Map;

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
    .line 51
    .local p1, "importedSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fsck/k9/preferences/IdentitySettings;->SETTINGS:Ljava/util/Map;

    invoke-static {p0, v0, p1, p2}, Lcom/fsck/k9/preferences/Settings;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
