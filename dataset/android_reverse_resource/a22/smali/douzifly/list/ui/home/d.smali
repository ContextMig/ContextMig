.class public final Ldouzifly/list/ui/home/d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# static fields
.field private static final synthetic c:[Lb/f/e;


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/GroupEditorActivity;

.field private final b:Lb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/d;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "editText"

    const-string v5, "getEditText()Landroid/widget/EditText;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/ui/home/d;->c:[Lb/f/e;

    return-void
.end method

.method public constructor <init>(Ldouzifly/list/ui/home/GroupEditorActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/ui/home/d;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ldouzifly/list/ui/home/d$a;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/d$a;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/d;->b:Lb/b;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/d;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/d;->a()Landroid/widget/EditText;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/d$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/d$1;-><init>(Ldouzifly/list/ui/home/d;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/d;->b:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/d;->c:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method
