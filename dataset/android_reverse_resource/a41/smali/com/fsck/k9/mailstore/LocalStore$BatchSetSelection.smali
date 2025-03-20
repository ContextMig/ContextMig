.class interface abstract Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BatchSetSelection"
.end annotation


# virtual methods
.method public abstract doDbWork(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation
.end method

.method public abstract getListItem(I)Ljava/lang/String;
.end method

.method public abstract getListSize()I
.end method

.method public abstract postDbWork()V
.end method
