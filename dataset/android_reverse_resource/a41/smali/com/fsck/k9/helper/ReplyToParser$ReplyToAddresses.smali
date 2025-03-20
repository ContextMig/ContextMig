.class public Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;
.super Ljava/lang/Object;
.source "ReplyToParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/helper/ReplyToParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplyToAddresses"
.end annotation


# instance fields
.field public final cc:[Lcom/fsck/k9/mail/Address;

.field public final to:[Lcom/fsck/k9/mail/Address;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "toAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    .local p2, "ccAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Address;

    iput-object v0, p0, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;->to:[Lcom/fsck/k9/mail/Address;

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Address;

    iput-object v0, p0, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;->cc:[Lcom/fsck/k9/mail/Address;

    .line 82
    return-void
.end method

.method public constructor <init>([Lcom/fsck/k9/mail/Address;)V
    .locals 1
    .param p1, "toAddresses"    # [Lcom/fsck/k9/mail/Address;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;->to:[Lcom/fsck/k9/mail/Address;

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    iput-object v0, p0, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;->cc:[Lcom/fsck/k9/mail/Address;

    .line 88
    return-void
.end method
