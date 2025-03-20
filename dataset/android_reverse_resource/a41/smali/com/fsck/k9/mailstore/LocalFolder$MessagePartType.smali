.class Lcom/fsck/k9/mailstore/LocalFolder$MessagePartType;
.super Ljava/lang/Object;
.source "LocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/LocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagePartType"
.end annotation


# static fields
.field static final ALTERNATIVE_HTML:I = 0x2

.field static final ALTERNATIVE_PLAIN:I = 0x1

.field static final ATTACHMENT:I = 0x5

.field static final HIDDEN_ATTACHMENT:I = 0x6

.field static final RELATED:I = 0x4

.field static final TEXT:I = 0x3

.field static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
