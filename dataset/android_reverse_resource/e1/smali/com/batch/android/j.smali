.class public final Lcom/batch/android/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BatchAu"

.field private static final b:Ljava/lang/String; = "BatchOpenAu"

.field private static final c:Ljava/lang/String; = "com.batch.messaging.push.shown"


# instance fields
.field private d:Landroid/content/Intent;

.field private e:Lcom/batch/android/BatchPushPayload;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/j;-><init>(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/j;->e:Lcom/batch/android/BatchPushPayload;

    .line 68
    iput-object p1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/BatchPushPayload;->payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/j;->e:Lcom/batch/android/BatchPushPayload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "IntentParser - Unexpected error while parsing BatchPushPayload from intent"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/batch/android/c/l;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 292
    const-string v1, "getPushData : No intent found"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/batch/android/j;->e:Lcom/batch/android/BatchPushPayload;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/c/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 300
    const-string v2, "Error while retrieving push data"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 97
    const-string v1, "getPromoCode : No intent found"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v2, "BatchAu"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const-string v1, "getPromoCode : Already used code"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    const-string v2, "Error while getting promo code from intent"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 114
    if-nez v1, :cond_3

    .line 116
    const-string v1, "getPromoCode : No intent data found"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    if-nez v1, :cond_4

    .line 126
    const-string v1, "getPromoCode : No intent url found"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/batch/android/j;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_5

    .line 136
    iget-object v2, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v3, "BatchAu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPromoCode : Found code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 140
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null url"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "app.scheme.codepattern"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 321
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 328
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPromoCode : url does not match pattern \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 157
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 166
    const-string v1, "isOpenFromPush : No intent found"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 192
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v2, "BatchOpenAu"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    const-string v1, "isOpenFromPush : Already used intent"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 191
    const-string v2, "Error while checking if open is from push"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v2, "fromPush"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 181
    if-eqz v1, :cond_3

    .line 184
    iget-object v2, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v3, "BatchOpenAu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Lcom/batch/android/BatchMessage;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 213
    const-string v1, "getLanding : No intent found"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-object v0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/batch/android/j;->e:Lcom/batch/android/BatchPushPayload;

    if-nez v1, :cond_2

    .line 219
    const-string v1, "getLanding : No valid payload in intent"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 244
    const-string v2, "Error while getting the embedded landing"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 226
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v2, "com.batch.messaging.push.shown"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    const-string v1, "getLanding : Already used intent"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/batch/android/j;->e:Lcom/batch/android/BatchPushPayload;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushPayload;->getLandingMessage()Lcom/batch/android/BatchMessage;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_4

    .line 237
    iget-object v2, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v3, "com.batch.messaging.push.shown"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 258
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 267
    const-string v1, "getPushId : No intent found"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-object v0

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/batch/android/j;->d:Landroid/content/Intent;

    const-string v2, "pushId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 275
    const-string v2, "Error while retrieving push id"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
