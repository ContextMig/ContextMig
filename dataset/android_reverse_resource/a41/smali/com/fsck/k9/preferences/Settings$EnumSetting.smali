.class Lcom/fsck/k9/preferences/Settings$EnumSetting;
.super Lcom/fsck/k9/preferences/Settings$SettingsDescription;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnumSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/fsck/k9/preferences/Settings$SettingsDescription",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lcom/fsck/k9/preferences/Settings$EnumSetting;, "Lcom/fsck/k9/preferences/Settings$EnumSetting<TT;>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Enum;, "TT;"
    invoke-direct {p0, p2}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 442
    iput-object p1, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Class;

    .line 443
    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/fsck/k9/preferences/Settings$EnumSetting;, "Lcom/fsck/k9/preferences/Settings$EnumSetting<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/preferences/Settings$EnumSetting;->enumClass:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
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
    .line 437
    .local p0, "this":Lcom/fsck/k9/preferences/Settings$EnumSetting;, "Lcom/fsck/k9/preferences/Settings$EnumSetting<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/Settings$EnumSetting;->fromString(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
