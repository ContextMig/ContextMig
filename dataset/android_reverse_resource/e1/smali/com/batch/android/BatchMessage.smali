.class public abstract Lcom/batch/android/BatchMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionSource;


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# static fields
.field public static final MESSAGING_EXTRA_PAYLOAD_KEY:Ljava/lang/String; = "com.batch.messaging.payload"

.field private static final a:Ljava/lang/String; = "kind"

.field private static final b:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageForBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchMessage;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const-string v0, "com.batch.messaging.payload"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string v1, "Bundle doesn\'t contain the required elements for reading BatchMessage"

    invoke-direct {v0, v1}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    const-string v1, "landing"

    const-string v2, "kind"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    invoke-static {v0}, Lcom/batch/android/BatchPushPayload;->payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/BatchPushPayload;->getLandingMessage()Lcom/batch/android/BatchMessage;

    move-result-object v0

    return-object v0

    .line 71
    :cond_2
    new-instance v0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string v1, "Unknown BatchMessage kind"

    invoke-direct {v0, v1}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract a()Lcom/batch/android/json/JSONObject;
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Landroid/os/Bundle;
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v1, "kind"

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    const-string v1, "com.batch.messaging.payload"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public writeToIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v1, "kind"

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    const-string v1, "com.batch.messaging.payload"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    return-void
.end method
