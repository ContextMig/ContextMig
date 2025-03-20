.class Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;
.super Lcom/fsck/k9/preferences/Settings$SettingsDescription;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntegerRangeSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/preferences/Settings$SettingsDescription",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private end:I

.field private start:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 558
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/preferences/Settings$SettingsDescription;-><init>(Ljava/lang/Object;)V

    .line 559
    iput p1, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->start:I

    .line 560
    iput p2, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->end:I

    .line 561
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
    .line 566
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 567
    .local v0, "intValue":I
    iget v1, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->start:I

    if-gt v1, v0, :cond_0

    iget v1, p0, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->end:I

    if-gt v0, v1, :cond_0

    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 570
    .end local v0    # "intValue":I
    :catch_0
    move-exception v1

    .line 572
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
    .line 553
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;->fromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
