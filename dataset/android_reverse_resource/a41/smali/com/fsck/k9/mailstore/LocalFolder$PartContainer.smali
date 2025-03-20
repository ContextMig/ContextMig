.class Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;
.super Ljava/lang/Object;
.source "LocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/LocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartContainer"
.end annotation


# instance fields
.field public final parent:J

.field public final part:Lcom/fsck/k9/mail/Part;


# direct methods
.method constructor <init>(JLcom/fsck/k9/mail/Part;)V
    .locals 1
    .param p1, "parent"    # J
    .param p3, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput-wide p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;->parent:J

    .line 1663
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;->part:Lcom/fsck/k9/mail/Part;

    .line 1664
    return-void
.end method
