.class public Lcom/batch/android/BatchPushPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/k;


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchPushPayload$ParsingException;
    }
.end annotation


# instance fields
.field private a:Lcom/batch/android/c/l;

.field private b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/batch/android/c/l;->a(Landroid/os/Bundle;)Lcom/batch/android/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    .line 57
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string v1, "Payload does not contain required Batch push data"

    invoke-direct {v0, v1}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    .line 62
    return-void
.end method

.method public static payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;
    .locals 2
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
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extras cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const-string v0, "batchPushPayload"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string v1, "Given bundle does not contain push information in Batch.Push.PAYLOAD_KEY"

    invoke-direct {v0, v1}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v1, Lcom/batch/android/BatchPushPayload;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchPushPayload;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static payloadFromReceiverIntent(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    new-instance v1, Lcom/batch/android/BatchPushPayload;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchPushPayload;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected a()Lcom/batch/android/c/l;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->p()Ljava/util/List;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getBigPictureURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->n()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v1}, Lcom/batch/android/c/l;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/batch/android/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCustomLargeIconURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->k()Ljava/lang/String;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v1}, Lcom/batch/android/c/l;->l()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/batch/android/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLandingMessage()Lcom/batch/android/BatchMessage;
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->i()Lcom/batch/android/json/JSONObject;

    move-result-object v1

    .line 242
    if-nez v1, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/batch/android/BatchLandingMessage;

    iget-object v2, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    invoke-direct {v0, v2, v1}, Lcom/batch/android/BatchLandingMessage;-><init>(Landroid/os/Bundle;Lcom/batch/android/json/JSONObject;)V

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->q()Lcom/batch/android/c/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/l$a;->b()I

    move-result v0

    return v0
.end method

.method public getPushBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public hasBigPicture()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->m()Z

    move-result v0

    return v0
.end method

.method public hasCustomLargeIcon()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->j()Z

    move-result v0

    return v0
.end method

.method public hasDeeplink()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->c()Z

    move-result v0

    return v0
.end method

.method public hasLandingMessage()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->h()Z

    move-result v0

    return v0
.end method

.method public isGroupSummary()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->s()Z

    move-result v0

    return v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    const-string v0, "batchPushPayload"

    iget-object v1, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public writeToIntentExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    const-string v0, "batchPushPayload"

    iget-object v1, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    return-void
.end method
