.class public Lcom/batch/android/BatchLandingMessage;
.super Lcom/batch/android/BatchMessage;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/k;


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# static fields
.field public static final KIND:Ljava/lang/String; = "landing"


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lcom/batch/android/json/JSONObject;


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;Lcom/batch/android/json/JSONObject;)V
    .locals 0
    .param p1, "rawPayload"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parsedLanding"    # Lcom/batch/android/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/batch/android/BatchMessage;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/batch/android/BatchLandingMessage;->a:Landroid/os/Bundle;

    .line 21
    iput-object p2, p0, Lcom/batch/android/BatchLandingMessage;->b:Lcom/batch/android/json/JSONObject;

    .line 22
    return-void
.end method


# virtual methods
.method protected a()Lcom/batch/android/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/batch/android/BatchLandingMessage;->b:Lcom/batch/android/json/JSONObject;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "landing"

    return-object v0
.end method

.method protected c()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v1, "batchPushPayload"

    iget-object v2, p0, Lcom/batch/android/BatchLandingMessage;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method

.method public getPushBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/batch/android/BatchLandingMessage;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
