.class public Lcom/dropbox/core/BadResponseCodeException;
.super Lcom/dropbox/core/BadResponseException;
.source "BadResponseCodeException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput p3, p0, Lcom/dropbox/core/BadResponseCodeException;->statusCode:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p4}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iput p3, p0, Lcom/dropbox/core/BadResponseCodeException;->statusCode:I

    .line 19
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/dropbox/core/BadResponseCodeException;->statusCode:I

    return v0
.end method
