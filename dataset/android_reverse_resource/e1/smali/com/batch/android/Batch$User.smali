.class public final Lcom/batch/android/Batch$User;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static editor()Lcom/batch/android/BatchUserDataEditor;
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/batch/android/BatchUserDataEditor;

    invoke-direct {v0}, Lcom/batch/android/BatchUserDataEditor;-><init>()V

    return-object v0
.end method

.method public static getEditor()Lcom/batch/android/BatchUserDataEditor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    invoke-static {}, Lcom/batch/android/Batch$User;->editor()Lcom/batch/android/BatchUserDataEditor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lcom/batch/android/Batch;->f()Lcom/batch/android/i;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/batch/android/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printDebugInformation()V
    .locals 0

    .prologue
    .line 668
    invoke-static {}, Lcom/batch/android/f/g;->i()V

    .line 669
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 597
    invoke-static {p0, v0, v0}, Lcom/batch/android/Batch$User;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 598
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/Batch$User;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 610
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/batch/android/json/JSONObject;

    .prologue
    .line 622
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/f/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 623
    return-void
.end method

.method public static trackLocation(Landroid/location/Location;)V
    .locals 1
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 636
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/g;->a(Landroid/location/Location;)V

    .line 637
    return-void
.end method

.method public static trackTransaction(D)V
    .locals 2
    .param p0, "amount"    # D

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/Batch$User;->trackTransaction(DLcom/batch/android/json/JSONObject;)V

    .line 648
    return-void
.end method

.method public static trackTransaction(DLcom/batch/android/json/JSONObject;)V
    .locals 2
    .param p0, "amount"    # D
    .param p2, "data"    # Lcom/batch/android/json/JSONObject;

    .prologue
    .line 659
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/f/g;->a(DLcom/batch/android/json/JSONObject;)V

    .line 660
    return-void
.end method
