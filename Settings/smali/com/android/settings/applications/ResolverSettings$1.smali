.class Lcom/android/settings_ex/applications/ResolverSettings$1;
.super Ljava/lang/Object;
.source "ResolverSettings.java"

# interfaces
.implements Lmiui/widget/DynamicListView$RearrangeListener;


# instance fields
.field final synthetic MQ:Lcom/android/settings_ex/applications/ResolverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ResolverSettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/applications/ResolverSettings$1;->MQ:Lcom/android/settings_ex/applications/ResolverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onDragStart()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onOrderChanged(II)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResolverSettings$1;->MQ:Lcom/android/settings_ex/applications/ResolverSettings;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ResolverSettings;->a(Lcom/android/settings_ex/applications/ResolverSettings;)Lcom/android/settings_ex/applications/ResolverSettings$ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/applications/ResolverSettings$ResolverListAdapter;->OnOrderChanged(II)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResolverSettings$1;->MQ:Lcom/android/settings_ex/applications/ResolverSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings_ex/applications/ResolverSettings;->MK:Z

    .line 127
    return-void
.end method
