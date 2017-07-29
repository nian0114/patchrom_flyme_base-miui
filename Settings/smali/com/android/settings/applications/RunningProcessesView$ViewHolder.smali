.class public Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# instance fields
.field public Hl:Landroid/view/View;

.field public NG:Landroid/widget/TextView;

.field public NH:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public ln:Landroid/widget/TextView;

.field public lp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->Hl:Landroid/view/View;

    .line 168
    const v0, 0x7f130060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f130054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->ln:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f1300d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->lp:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f130286

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->NG:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f130050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->NH:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .locals 10

    .prologue
    .line 178
    iget-object v3, p1, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->Hl:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 180
    iget-object v2, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OO:Landroid/content/pm/PackageItemInfo;

    if-nez v2, :cond_0

    instance-of v2, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v2, :cond_0

    .line 183
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v2, v0

    .line 184
    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->OW:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v2, :cond_0

    .line 185
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->OW:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->b(Landroid/content/pm/PackageManager;)V

    .line 186
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->OW:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->OO:Landroid/content/pm/PackageItemInfo;

    iput-object v2, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OO:Landroid/content/pm/PackageItemInfo;

    .line 187
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->OW:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->OP:Ljava/lang/CharSequence;

    iput-object v2, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OP:Ljava/lang/CharSequence;

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->ln:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OP:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v5, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 192
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->Hl:Landroid/view/View;

    iput-object v2, v5, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 193
    iput-object p2, v5, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->NA:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    .line 194
    iput-object p0, v5, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->NB:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 195
    iget-wide v6, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OR:J

    iput-wide v6, v5, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->NC:J

    .line 196
    iget-boolean v2, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OV:Z

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->lp:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->Hl:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c05e6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OT:Ljava/lang/String;

    .line 204
    iget-object v2, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OO:Landroid/content/pm/PackageItemInfo;

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->Hl:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->OO:Landroid/content/pm/PackageItemInfo;

    const-wide/32 v8, 0x927c0

    invoke-static {v2, v6, v4, v8, v9}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 207
    iget v4, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    const/16 v6, 0x3e7

    if-ne v4, v6, :cond_1

    .line 208
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->Hl:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->Hl:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5, v2, p3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 215
    monitor-exit v3

    return-object v5

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->lp:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
