.class public Lcom/fsck/k9/mail/internet/Viewable$Flowed;
.super Lcom/fsck/k9/mail/internet/Viewable$Textual;
.source "Viewable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/Viewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flowed"
.end annotation


# instance fields
.field private delSp:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Part;Z)V
    .locals 0
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .param p2, "delSp"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/internet/Viewable$Textual;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 49
    iput-boolean p2, p0, Lcom/fsck/k9/mail/internet/Viewable$Flowed;->delSp:Z

    .line 50
    return-void
.end method


# virtual methods
.method public isDelSp()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fsck/k9/mail/internet/Viewable$Flowed;->delSp:Z

    return v0
.end method
