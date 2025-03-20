.class Lcom/fsck/k9/preferences/AccountSettings$StorageProviderSetting;
.super Lcom/fsck/k9/preferences/Settings$SettingsDescription;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageProviderSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/preferences/Settings$SettingsDescription",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 332
    return-void
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/AccountSettings$StorageProviderSetting;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 341
    sget-object v2, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v1

    .line 342
    .local v1, "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/StorageManager;->getAvailableProviders()Ljava/util/Map;

    move-result-object v0

    .line 343
    .local v0, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    return-object p1

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Validation failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/AccountSettings$StorageProviderSetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getDefaultProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
