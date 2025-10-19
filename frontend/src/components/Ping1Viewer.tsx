import { useGetApiPing } from "../api/ginApi"

export const Ping1Viewer = () => {
  const {isLoading, error, data} = useGetApiPing();

  return (
    <div style={{border: '1px solid gray', margin: '.5rem', padding: '.5rem'}}>
      <h3>Ping1 Viewer</h3>
      <div>isLoading: { isLoading ? 'true' : 'false' }</div>
      {error && <div>Error: {(error as unknown as Error).message}</div>}
      {data && <div>Data: {data.data.message}</div>}
    </div>
  );
}