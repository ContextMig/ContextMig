.class Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;
.super Lcom/fsck/k9/preferences/Settings$PseudoEnumSetting;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeletePolicySetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/preferences/Settings$PseudoEnumSetting",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fsck/k9/Account$DeletePolicy;)V
    .locals 3
    .param p1, "defaultValue"    # Lcom/fsck/k9/Account$DeletePolicy;

    .prologue
    .line 354
    iget v1, p1, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/preferences/Settings$PseudoEnumSetting;-><init>(Ljava/lang/Object;)V

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v0, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->NEVER:Lcom/fsck/k9/Account$DeletePolicy;

    iget v1, v1, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NEVER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->ON_DELETE:Lcom/fsck/k9/Account$DeletePolicy;

    iget v1, v1, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DELETE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->MARK_AS_READ:Lcom/fsck/k9/Account$DeletePolicy;

    iget v1, v1, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MARK_AS_READ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;->mapping:Ljava/util/Map;

    .line 360
    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 370
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 371
    .local v0, "deletePolicy":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;->mapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    return-object v0

    .line 374
    .end local v0    # "deletePolicy":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 376
    :cond_0
    new-instance v1, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    invoke-direct {v1}, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;-><init>()V

    throw v1
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;->fromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/fsck/k9/preferences/AccountSettings$DeletePolicySetting;->mapping:Ljava/util/Map;

    return-object v0
.end method
