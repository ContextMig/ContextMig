.class public Lcom/fsck/k9/mailstore/AttachmentViewInfo;
.super Ljava/lang/Object;
.source "AttachmentViewInfo.java"


# static fields
.field public static final UNKNOWN_SIZE:J = -0x1L


# instance fields
.field private contentAvailable:Z

.field public final displayName:Ljava/lang/String;

.field public final inlineAttachment:Z

.field public final internalUri:Landroid/net/Uri;

.field public final mimeType:Ljava/lang/String;

.field public final part:Lcom/fsck/k9/mail/Part;

.field public final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;ZLcom/fsck/k9/mail/Part;Z)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "internalUri"    # Landroid/net/Uri;
    .param p6, "inlineAttachment"    # Z
    .param p7, "part"    # Lcom/fsck/k9/mail/Part;
    .param p8, "contentAvailable"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 30
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    .line 31
    iput-object p5, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 32
    iput-boolean p6, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 33
    iput-object p7, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 34
    iput-boolean p8, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->contentAvailable:Z

    .line 35
    return-void
.end method


# virtual methods
.method public isContentAvailable()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->contentAvailable:Z

    return v0
.end method

.method public setContentAvailable()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->contentAvailable:Z

    .line 43
    return-void
.end method
