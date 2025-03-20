.class public Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
        "<",
        "Lcom/fsck/k9/activity/MessageInfoHolder;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 441
    check-cast p1, Lcom/fsck/k9/activity/MessageInfoHolder;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;->getField(Lcom/fsck/k9/activity/MessageInfoHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/fsck/k9/activity/MessageInfoHolder;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Lcom/fsck/k9/activity/MessageInfoHolder;

    .prologue
    .line 444
    iget-object v0, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
