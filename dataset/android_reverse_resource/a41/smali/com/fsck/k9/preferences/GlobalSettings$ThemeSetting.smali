.class Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;
.super Lcom/fsck/k9/preferences/Settings$SettingsDescription;
.source "GlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/GlobalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/preferences/Settings$SettingsDescription",
        "<",
        "Lcom/fsck/k9/K9$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final THEME_DARK:Ljava/lang/String; = "dark"

.field private static final THEME_LIGHT:Ljava/lang/String; = "light"


# direct methods
.method constructor <init>(Lcom/fsck/k9/K9$Theme;)V
    .locals 0
    .param p1, "defaultValue"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 461
    return-void
.end method


# virtual methods
.method public fromPrettyString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 483
    const-string v0, "light"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    .line 486
    :goto_0
    return-object v0

    .line 485
    :cond_0
    const-string v0, "dark"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    sget-object v0, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    goto :goto_0

    .line 489
    :cond_1
    new-instance v0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    invoke-direct {v0}, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;-><init>()V

    throw v0
.end method

.method public bridge synthetic fromPrettyString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;->fromPrettyString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 466
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 467
    .local v0, "theme":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v2}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x103000c

    if-ne v1, v2, :cond_1

    .line 472
    :cond_0
    sget-object v1, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    .line 474
    :goto_0
    return-object v1

    .line 473
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v2}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x1030005

    if-ne v1, v2, :cond_3

    .line 474
    :cond_2
    sget-object v1, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    .end local v0    # "theme":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 478
    :cond_3
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
    .line 455
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;->fromString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    return-object v0
.end method

.method public toPrettyString(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 494
    sget-object v0, Lcom/fsck/k9/preferences/GlobalSettings$1;->$SwitchMap$com$fsck$k9$K9$Theme:[I

    invoke-virtual {p1}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 499
    const-string v0, "light"

    :goto_0
    return-object v0

    .line 496
    :pswitch_0
    const-string v0, "dark"

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic toPrettyString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    check-cast p1, Lcom/fsck/k9/K9$Theme;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;->toPrettyString(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 506
    invoke-virtual {p1}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    check-cast p1, Lcom/fsck/k9/K9$Theme;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;->toString(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
