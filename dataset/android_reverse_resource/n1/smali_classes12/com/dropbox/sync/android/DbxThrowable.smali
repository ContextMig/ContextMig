.class public interface abstract Lcom/dropbox/sync/android/DbxThrowable;
.super Ljava/lang/Object;
.source "DbxThrowable.java"


# virtual methods
.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract rethrow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;,
            Lcom/dropbox/sync/android/DbxRuntimeException;
        }
    .end annotation
.end method
