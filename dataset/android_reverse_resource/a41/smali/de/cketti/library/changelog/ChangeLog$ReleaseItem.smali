.class public Lde/cketti/library/changelog/ChangeLog$ReleaseItem;
.super Ljava/lang/Object;
.source "ChangeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/cketti/library/changelog/ChangeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReleaseItem"
.end annotation


# instance fields
.field public final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final versionCode:I

.field public final versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p3, "changes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p1, p0, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->versionCode:I

    .line 594
    iput-object p2, p0, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->versionName:Ljava/lang/String;

    .line 595
    iput-object p3, p0, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->changes:Ljava/util/List;

    .line 596
    return-void
.end method
