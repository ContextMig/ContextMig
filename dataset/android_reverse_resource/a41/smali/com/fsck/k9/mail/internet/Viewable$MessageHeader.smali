.class public Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;
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
    name = "MessageHeader"
.end annotation


# instance fields
.field private mContainerPart:Lcom/fsck/k9/mail/Part;

.field private mMessage:Lcom/fsck/k9/mail/Message;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "containerPart"    # Lcom/fsck/k9/mail/Part;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mContainerPart:Lcom/fsck/k9/mail/Part;

    .line 80
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    .line 81
    return-void
.end method


# virtual methods
.method public getContainerPart()Lcom/fsck/k9/mail/Part;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mContainerPart:Lcom/fsck/k9/mail/Part;

    return-object v0
.end method

.method public getMessage()Lcom/fsck/k9/mail/Message;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mMessage:Lcom/fsck/k9/mail/Message;

    return-object v0
.end method
