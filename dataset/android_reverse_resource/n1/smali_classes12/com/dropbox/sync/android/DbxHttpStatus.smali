.class final Lcom/dropbox/sync/android/DbxHttpStatus;
.super Ljava/lang/Object;
.source "DbxHttpStatus.java"


# instance fields
.field final mHttpCode:I

.field final mUserError:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "httpCode"    # I
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/dropbox/sync/android/DbxHttpStatus;->mHttpCode:I

    .line 20
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxHttpStatus;->mUserError:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getHttpCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/dropbox/sync/android/DbxHttpStatus;->mHttpCode:I

    return v0
.end method

.method public getUserError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxHttpStatus;->mUserError:Ljava/lang/String;

    return-object v0
.end method
