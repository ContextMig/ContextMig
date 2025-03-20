.class Lcom/fsck/k9/view/MessageHeader$HeaderEntry;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/MessageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderEntry"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader$HeaderEntry;->label:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/fsck/k9/view/MessageHeader$HeaderEntry;->value:Ljava/lang/String;

    .line 93
    return-void
.end method
