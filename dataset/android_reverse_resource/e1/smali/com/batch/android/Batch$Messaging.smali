.class public final Lcom/batch/android/Batch$Messaging;
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
    name = "Messaging"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/Batch$Messaging$LifecycleListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFragment(Landroid/content/Context;Lcom/batch/android/BatchMessage;)Landroid/support/v4/app/DialogFragment;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "message"    # Lcom/batch/android/BatchMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/batch/android/BatchMessage;->a()Lcom/batch/android/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/batch/android/f/d;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static setAutomaticMode(Z)V
    .locals 1
    .param p0, "automatic"    # Z

    .prologue
    .line 722
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/d;->a(Z)V

    .line 723
    return-void
.end method

.method public static setLifecycleListener(Lcom/batch/android/Batch$Messaging$LifecycleListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/batch/android/Batch$Messaging$LifecycleListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 746
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/d;->a(Lcom/batch/android/Batch$Messaging$LifecycleListener;)V

    .line 747
    return-void
.end method

.method public static setTypefaceOverride(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 1
    .param p0, "normalTypeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "boldTypeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 736
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/f/d;->a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 737
    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "message"    # Lcom/batch/android/BatchMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 779
    invoke-static {p0, p1}, Lcom/batch/android/MessagingActivity;->startActivityForMessage(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V

    .line 780
    return-void
.end method
