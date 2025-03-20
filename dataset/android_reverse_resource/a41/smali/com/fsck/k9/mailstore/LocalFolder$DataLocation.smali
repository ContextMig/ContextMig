.class Lcom/fsck/k9/mailstore/LocalFolder$DataLocation;
.super Ljava/lang/Object;
.source "LocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/LocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataLocation"
.end annotation


# static fields
.field static final CHILD_PART_CONTAINS_DATA:I = 0x3

.field static final IN_DATABASE:I = 0x1

.field static final MISSING:I = 0x0

.field static final ON_DISK:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
