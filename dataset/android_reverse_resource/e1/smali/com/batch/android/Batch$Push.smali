.class public final Lcom/batch/android/Batch$Push;
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
    name = "Push"
.end annotation


# static fields
.field public static final ALERT_KEY:Ljava/lang/String; = "msg"

.field public static final PAYLOAD_KEY:Ljava/lang/String; = "batchPushPayload"

.field public static final TITLE_KEY:Ljava/lang/String; = "title"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendBatchData(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "pushIntent"    # Landroid/content/Intent;
    .param p1, "openIntent"    # Landroid/content/Intent;

    .prologue
    .line 475
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/f/e;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public static dismissNotifications()V
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/e;->k()V

    .line 408
    return-void
.end method

.method public static displayNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 498
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/f/e;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method public static getLastKnownPushToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationsType(Landroid/content/Context;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/batch/android/PushNotificationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static isBatchPush(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 442
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static onNotificationDisplayed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/f/e;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 521
    return-void
.end method

.method public static setAdditionalIntentFlags(Ljava/lang/Integer;)V
    .locals 1
    .param p0, "flags"    # Ljava/lang/Integer;

    .prologue
    .line 509
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Ljava/lang/Integer;)V

    .line 510
    return-void
.end method

.method public static setGCMSenderId(Ljava/lang/String;)V
    .locals 1
    .param p0, "gcmSenderId"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "largeIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 393
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Landroid/graphics/Bitmap;)V

    .line 394
    return-void
.end method

.method public static setManualDisplay(Z)V
    .locals 1
    .param p0, "manualDisplay"    # Z

    .prologue
    .line 464
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Z)V

    .line 465
    return-void
.end method

.method public static setNotificationsColor(I)V
    .locals 1
    .param p0, "argbColor"    # I

    .prologue
    .line 453
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->b(I)V

    .line 454
    return-void
.end method

.method public static setNotificationsType(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/batch/android/PushNotificationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/batch/android/PushNotificationType;>;"
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Ljava/util/EnumSet;)V

    .line 430
    return-void
.end method

.method public static setSmallIconResourceId(I)V
    .locals 1
    .param p0, "resourceId"    # I

    .prologue
    .line 372
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(I)V

    .line 373
    return-void
.end method

.method public static setSound(Landroid/net/Uri;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 383
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/f/e;->a(Landroid/net/Uri;)V

    .line 384
    return-void
.end method

.method public static shouldDisplayPush(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 487
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/f/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
