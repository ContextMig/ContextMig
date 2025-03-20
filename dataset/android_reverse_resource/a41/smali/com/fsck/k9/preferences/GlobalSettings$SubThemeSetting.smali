.class Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;
.super Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;
.source "GlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/GlobalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubThemeSetting"
.end annotation


# static fields
.field private static final THEME_USE_GLOBAL:Ljava/lang/String; = "use_global"


# direct methods
.method constructor <init>(Lcom/fsck/k9/K9$Theme;)V
    .locals 0
    .param p1, "defaultValue"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;-><init>(Lcom/fsck/k9/K9$Theme;)V

    .line 515
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
    .line 533
    const-string v0, "use_global"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    .line 537
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;->fromPrettyString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic fromPrettyString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;->fromPrettyString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 521
    .local v1, "theme":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v3}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 522
    sget-object v2, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    .line 525
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;->fromString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 526
    .end local v1    # "theme":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    invoke-direct {v2}, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;-><init>()V

    throw v2
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;->fromString(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    return-object v0
.end method

.method public toPrettyString(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 542
    sget-object v0, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    if-ne p1, v0, :cond_0

    .line 543
    const-string v0, "use_global"

    .line 546
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$ThemeSetting;->toPrettyString(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toPrettyString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    check-cast p1, Lcom/fsck/k9/K9$Theme;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/GlobalSettings$SubThemeSetting;->toPrettyString(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
