.class public abstract Lcom/fsck/k9/mail/internet/Viewable$Textual;
.super Ljava/lang/Object;
.source "Viewable.java"

# interfaces
.implements Lcom/fsck/k9/mail/internet/Viewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/Viewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Textual"
.end annotation


# instance fields
.field private mPart:Lcom/fsck/k9/mail/Part;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/Viewable$Textual;->mPart:Lcom/fsck/k9/mail/Part;

    .line 28
    return-void
.end method


# virtual methods
.method public getPart()Lcom/fsck/k9/mail/Part;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/Viewable$Textual;->mPart:Lcom/fsck/k9/mail/Part;

    return-object v0
.end method
