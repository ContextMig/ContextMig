.class public Lcom/fsck/k9/mail/internet/Viewable$Alternative;
.super Ljava/lang/Object;
.source "Viewable.java"

# interfaces
.implements Lcom/fsck/k9/mail/internet/Viewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/Viewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alternative"
.end annotation


# instance fields
.field private mHtml:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "text":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .local p2, "html":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mText:Ljava/util/List;

    .line 106
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mHtml:Ljava/util/List;

    .line 107
    return-void
.end method


# virtual methods
.method public getHtml()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mHtml:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mText:Ljava/util/List;

    return-object v0
.end method
