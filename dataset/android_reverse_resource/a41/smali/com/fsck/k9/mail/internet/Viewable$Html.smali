.class public Lcom/fsck/k9/mail/internet/Viewable$Html;
.super Lcom/fsck/k9/mail/internet/Viewable$Textual;
.source "Viewable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/Viewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Html"
.end annotation


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/internet/Viewable$Textual;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 63
    return-void
.end method
