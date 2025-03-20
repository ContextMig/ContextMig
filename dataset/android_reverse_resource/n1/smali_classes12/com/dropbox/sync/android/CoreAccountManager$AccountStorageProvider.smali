.class interface abstract Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;
.super Ljava/lang/Object;
.source "CoreAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccountStorageProvider"
.end annotation


# virtual methods
.method public abstract getAccounts(Ljava/lang/String;Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/CoreAccountManager;",
            "Lcom/dropbox/sync/android/CoreConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAccounts(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ">;)V"
        }
    .end annotation
.end method
