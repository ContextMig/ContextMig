.class public interface abstract Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;
.super Ljava/lang/Object;
.source "MigrationsHelper.java"


# virtual methods
.method public abstract getAccount()Lcom/fsck/k9/Account;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;
.end method

.method public abstract getStorage()Lcom/fsck/k9/preferences/Storage;
.end method

.method public abstract serializeFlags(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
