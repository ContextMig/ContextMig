.class Landroid/support/v4/widget/n;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/l;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/l;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/l;Landroid/support/v4/widget/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;-><init>(Landroid/support/v4/widget/l;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/l;->mDataValid:Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/l;

    invoke-virtual {v0}, Landroid/support/v4/widget/l;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/l;->mDataValid:Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/l;

    invoke-virtual {v0}, Landroid/support/v4/widget/l;->notifyDataSetInvalidated()V

    return-void
.end method
