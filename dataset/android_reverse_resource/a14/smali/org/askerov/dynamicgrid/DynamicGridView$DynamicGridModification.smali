.class Lorg/askerov/dynamicgrid/DynamicGridView$DynamicGridModification;
.super Ljava/lang/Object;
.source "DynamicGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/askerov/dynamicgrid/DynamicGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicGridModification"
.end annotation


# instance fields
.field private final transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView$DynamicGridModification;->transitions:Ljava/util/List;

    return-void
.end method
