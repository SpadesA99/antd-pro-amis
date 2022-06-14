let hasAuth = (route: any, roleId?: string) => {
  return route.roles ? route.roles.includes(roleId) : true;
};

export default function access(initialState: { currentUser?: API.CurrentUser } | undefined) {
  const { currentUser } = initialState ?? {};
  return {
    auth: (route: any) => hasAuth(route, currentUser?.access),
  };
}
