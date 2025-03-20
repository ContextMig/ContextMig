.class public Lde/baumann/browser/View/Adapter_AbBlock;
.super Landroid/widget/ArrayAdapter;
.source "Adapter_AbBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/Adapter_AbBlock$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final layoutResId:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0b004f

    .line 23
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p1, p0, Lde/baumann/browser/View/Adapter_AbBlock;->context:Landroid/content/Context;

    .line 25
    iput v0, p0, Lde/baumann/browser/View/Adapter_AbBlock;->layoutResId:I

    .line 26
    iput-object p2, p0, Lde/baumann/browser/View/Adapter_AbBlock;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lde/baumann/browser/View/Adapter_AbBlock;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lde/baumann/browser/View/Adapter_AbBlock;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lde/baumann/browser/View/Adapter_AbBlock;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lde/baumann/browser/View/Adapter_AbBlock;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 41
    iget-object p2, p0, Lde/baumann/browser/View/Adapter_AbBlock;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lde/baumann/browser/View/Adapter_AbBlock;->layoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    new-instance p3, Lde/baumann/browser/View/Adapter_AbBlock$Holder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lde/baumann/browser/View/Adapter_AbBlock$Holder;-><init>(Lde/baumann/browser/View/Adapter_AbBlock$1;)V

    const v0, 0x7f090139

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lde/baumann/browser/View/Adapter_AbBlock$Holder;->domain:Landroid/widget/TextView;

    const v0, 0x7f090138

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p3, Lde/baumann/browser/View/Adapter_AbBlock$Holder;->cancel:Landroid/widget/ImageButton;

    .line 45
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lde/baumann/browser/View/Adapter_AbBlock$Holder;

    .line 50
    :goto_0
    iget-object v0, p3, Lde/baumann/browser/View/Adapter_AbBlock$Holder;->domain:Landroid/widget/TextView;

    iget-object v1, p0, Lde/baumann/browser/View/Adapter_AbBlock;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p3, p3, Lde/baumann/browser/View/Adapter_AbBlock$Holder;->cancel:Landroid/widget/ImageButton;

    new-instance v0, Lde/baumann/browser/View/Adapter_AbBlock$1;

    invoke-direct {v0, p0, p1}, Lde/baumann/browser/View/Adapter_AbBlock$1;-><init>(Lde/baumann/browser/View/Adapter_AbBlock;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
