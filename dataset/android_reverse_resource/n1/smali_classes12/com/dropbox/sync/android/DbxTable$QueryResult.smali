.class public Lcom/dropbox/sync/android/DbxTable$QueryResult;
.super Ljava/lang/Object;
.source "DbxTable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/dropbox/sync/android/DbxRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dropbox/sync/android/DbxTable;


# direct methods
.method private constructor <init>(Lcom/dropbox/sync/android/DbxTable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxRecord;>;"
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->this$0:Lcom/dropbox/sync/android/DbxTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxTable;Ljava/util/List;Lcom/dropbox/sync/android/DbxTable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxTable;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/dropbox/sync/android/DbxTable$1;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/DbxTable$QueryResult;-><init>(Lcom/dropbox/sync/android/DbxTable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    return-object v0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 125
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 126
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 128
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 127
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/dropbox/sync/android/DbxTable$QueryResult;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    check-cast p1, Lcom/dropbox/sync/android/DbxTable$QueryResult;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable$QueryResult;->mList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
