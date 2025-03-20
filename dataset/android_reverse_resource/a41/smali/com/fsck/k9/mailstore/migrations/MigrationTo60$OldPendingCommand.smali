.class Lcom/fsck/k9/mailstore/migrations/MigrationTo60$OldPendingCommand;
.super Ljava/lang/Object;
.source "MigrationTo60.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/migrations/MigrationTo60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OldPendingCommand"
.end annotation


# instance fields
.field public arguments:[Ljava/lang/String;

.field public command:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
