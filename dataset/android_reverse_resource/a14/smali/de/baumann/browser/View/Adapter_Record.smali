.class public Lde/baumann/browser/View/Adapter_Record;
.super Landroid/widget/ArrayAdapter;
.source "Adapter_Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/Adapter_Record$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lde/baumann/browser/Database/Record;",
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
            "Lde/baumann/browser/Database/Record;",
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
            "Lde/baumann/browser/Database/Record;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0b0038

    .line 23
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p1, p0, Lde/baumann/browser/View/Adapter_Record;->context:Landroid/content/Context;

    .line 25
    iput v0, p0, Lde/baumann/browser/View/Adapter_Record;->layoutResId:I

    .line 26
    iput-object p2, p0, Lde/baumann/browser/View/Adapter_Record;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 42
    iget-object p2, p0, Lde/baumann/browser/View/Adapter_Record;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lde/baumann/browser/View/Adapter_Record;->layoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 43
    new-instance p3, Lde/baumann/browser/View/Adapter_Record$Holder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lde/baumann/browser/View/Adapter_Record$Holder;-><init>(Lde/baumann/browser/View/Adapter_Record$1;)V

    const v0, 0x7f0900bf

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lde/baumann/browser/View/Adapter_Record$Holder;->title:Landroid/widget/TextView;

    const v0, 0x7f0900be

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lde/baumann/browser/View/Adapter_Record$Holder;->time:Landroid/widget/TextView;

    const v0, 0x7f0900c0

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lde/baumann/browser/View/Adapter_Record$Holder;->url:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lde/baumann/browser/View/Adapter_Record$Holder;

    .line 52
    :goto_0
    iget-object v0, p0, Lde/baumann/browser/View/Adapter_Record;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/baumann/browser/Database/Record;

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p3, Lde/baumann/browser/View/Adapter_Record$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p3, Lde/baumann/browser/View/Adapter_Record$Holder;->time:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/baumann/browser/Database/Record;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p3, p3, Lde/baumann/browser/View/Adapter_Record$Holder;->url:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/baumann/browser/Database/Record;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
