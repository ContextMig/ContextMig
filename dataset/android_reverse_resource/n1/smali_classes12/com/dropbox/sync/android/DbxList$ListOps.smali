.class interface abstract Lcom/dropbox/sync/android/DbxList$ListOps;
.super Ljava/lang/Object;
.source "DbxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ListOps"
.end annotation


# virtual methods
.method public abstract listAppend(Lcom/dropbox/sync/android/DbxAtom;)V
.end method

.method public abstract listClear()V
.end method

.method public abstract listDelete(I)V
.end method

.method public abstract listGet(I)Lcom/dropbox/sync/android/DbxAtom;
.end method

.method public abstract listInsert(ILcom/dropbox/sync/android/DbxAtom;)V
.end method

.method public abstract listMove(II)V
.end method

.method public abstract listPut(ILcom/dropbox/sync/android/DbxAtom;)V
.end method

.method public abstract listSize()I
.end method

.method public abstract toList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;"
        }
    .end annotation
.end method
