.class public final Lcom/batch/android/Batch$Actions;
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
    name = "Actions"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDrawableAlias(Ljava/lang/String;I)V
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "drawableID"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 833
    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/f/a;->a(Ljava/lang/String;I)V

    .line 834
    return-void
.end method

.method public static performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "actionIdentifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arguments"    # Lcom/batch/android/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 846
    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/f/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public static register(Lcom/batch/android/UserAction;)V
    .locals 1
    .param p0, "userAction"    # Lcom/batch/android/UserAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 805
    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/a;->a(Lcom/batch/android/UserAction;)V

    .line 806
    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 817
    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/a;->a(Ljava/lang/String;)V

    .line 818
    return-void
.end method
